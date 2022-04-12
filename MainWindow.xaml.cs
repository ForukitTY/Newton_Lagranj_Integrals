using System;
using System.Windows;
using System.Text.RegularExpressions;
using MathNet.Symbolics;
using Expr = MathNet.Symbolics.SymbolicExpression;

namespace Boz3
{
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (lag.IsSelected == true)
                Lagranj();
            else if (newton.IsSelected == true)
                Newton();

        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            TB1.Text = "";
        }

        private void integrals_button(object sender, RoutedEventArgs e)
        {
            Integral_Rectangle();
        }

        private void integral_trapezoid(object sender, RoutedEventArgs e)
        {
            Integral_trapezoid();
        }

        private void integral_parabola(object sender, RoutedEventArgs e)
        {
            Integral_parabola();
        }

        string Drobn(string rr)
        {
            Regex regex = new Regex(@"\d{12}\*");
            MatchCollection matches = regex.Matches(rr);
            if (matches.Count > 0)
            {
                foreach (Match match in matches)
                    rr = rr.Replace(match.Value, "*");
            }
            regex = new Regex(@"\d{12} ");
            matches = regex.Matches(rr);
            if (matches.Count > 0)
            {
                foreach (Match match in matches)
                    rr = rr.Replace(match.Value, " ");
            }
            regex = new Regex(@"\d{12}\)");
            matches = regex.Matches(rr);
            if (matches.Count > 0)
            {
                foreach (Match match in matches)
                    rr = rr.Replace(match.Value, ")");
            }
            return rr;
        }
        double Sokr(string todoub)
        {
            return Convert.ToDouble(todoub.Replace('.', ','));
        }
        private void Lagranj()
        {

            TB1.Text = "";
            string[] lx = { "=", "=", "=", "=" };
            string[] xi = { x1.Text, x2.Text, x3.Text, x4.Text };
            string[] yi = { y1.Text, y2.Text, y3.Text, y4.Text };
            double znamen0 = (Sokr(xi[0]) - Sokr(xi[1])) * (Sokr(xi[0]) - Sokr(xi[2])) * (Sokr(xi[0]) - Sokr(xi[3]));
            double znamen1 = (Sokr(xi[1]) - Sokr(xi[0])) * (Sokr(xi[1]) - Sokr(xi[2])) * (Sokr(xi[1]) - Sokr(xi[3]));
            double znamen2 = (Sokr(xi[2]) - Sokr(xi[0])) * (Sokr(xi[2]) - Sokr(xi[1])) * (Sokr(xi[2]) - Sokr(xi[3]));
            double znamen3 = (Sokr(xi[3]) - Sokr(xi[1])) * (Sokr(xi[3]) - Sokr(xi[2])) * (Sokr(xi[3]) - Sokr(xi[0]));
            double[] znam = { znamen0, znamen1, znamen2, znamen3 };
            string L3x = "";
            string res = "";

            for (int i = 0; i < 4; i++)
            {

                L3x += $" + {yi[i]} * l{i}(x)";

            }
            L3x = L3x.Remove(0, 3);
            L3x = "Полином Лагранжа имеет вид: \n P(x)=" + L3x;// + "\nНайдем фундаментальные полиномы Лагранжа:\n";

            var x = Expr.Variable("x");

            for (int i = 0; i < 4; i++)
            {
                if (yi[i] == "0")
                    continue;

                for (int j = 0; j < 4; j++)
                {
                    if (i != j)
                    {
                        lx[i] += $"({ (x - xi[j]).RationalSimplify(x)})*";
                    }
                }
                lx[i] = lx[i].Remove(lx[i].Length - 1);

                //ЗАПИСЬ ФУНДАМЕНТАЛЬНЫХ ФОРМУЛ
                for (int j = 0; j < 4; j++)
                {
                    if (i != j)
                    {
                        lx[i] += $"/{ Math.Round(Sokr(xi[i]) - Sokr(xi[j]), 2)}";
                    }
                }

                res += $"{yi[i]}*(" + lx[i].Replace("=", "") + ")+";


                // ВЫЧИСЛЕНИЯ
                lx[i] += "=";

                lx[i] += ((x - Sokr(xi[4 / (i + 4)])) * (x - Sokr(xi[i != 2 ? 2 : 1])) * (x - Sokr(xi[i != 3 ? 3 : 1])) / znam[i]).RationalSimplify(x).ToString(); //после второго равно
                                                                                                                                                                   //Fu="3(x-10)"


                lx[i] = lx[i].Replace("0.0 ", " ");
                lx[i] = lx[i].Replace(".0 ", "");
                lx[i] = Drobn(lx[i]);



            }
            var Pn = SymbolicExpression.Parse(res.Replace(",", ".").Remove(res.Length - 1, 1)).RationalSimplify(x).ToString();
            Pn = Drobn(Pn);
            Pn = Drobn(Pn.Replace(".0", ""));
            Pn = Pn.Replace("1*x", "x");
            L3x += " = " + Pn;

            TB1.Text = L3x;
        }

        private void Newton()
        {

            TB1.Text = "";

            double[] dyi = { Sokr(y1.Text), Sokr(y2.Text), Sokr(y3.Text), Sokr(y4.Text) };
            double[] dxi = { Sokr(x1.Text), Sokr(x2.Text), Sokr(x3.Text), Sokr(x4.Text) };

            double[][] ddeli = { dyi, new double[3], new double[2], new double[1] };

            TB1.Text = "Полином Ньютона:\nN(x) = ";

            Expr x = Expr.Variable("x");

            for (int i = 0; i < 3; i++)

                for (int j = 0; j < 3 - i; j++)

                    ddeli[i + 1][j] = (ddeli[i][j] - ddeli[i][j + 1]) / (dxi[j] - dxi[j + i + 1]);


            TB1.Text += $"({ddeli[0][0]})";
            for (int i = 1; i < 4; i++)
            {

                TB1.Text += $"+({ddeli[i][0]})";

                for (int j = 0; j < i; j++)

                    TB1.Text += $"*(x-{dxi[j]})";

            }
            TB1.Text = TB1.Text.Replace("--", "+");

            string res = TB1.Text.Substring(24);

            var Pn = Expr.Parse(res.Replace(",", ".")).RationalSimplify(x).ToString();
            Pn = Drobn(Pn.Replace(".0", ""));
            Pn = Pn.Replace("1*x", "x");
            TB1.Text = Drobn(TB1.Text);
            TB1.Text += " = " + Pn;
        }

        private void Integral_Rectangle()
        {
            //precondition
            string fx = TB2.Text;

            var A = Convert.ToDecimal(tbA.Text);
            var B = Convert.ToDecimal(tbB.Text);
            if (A > B)
            {
                MessageBox.Show("Левая граница 'a' должна быть неменьше правой 'b'!", "Неверные границы интегрирования!");
                return;
            }
            if (A == B)
            {
                Res.Text = "0";
                Res_trap.Text = "0";
                Res_simp.Text = "0";
                return;
            }
            var eps = Convert.ToDecimal(tbEps.Text.Replace(".", ","));
            decimal step1 = (B - A) / Convert.ToDecimal(tbN.Text);
            decimal n = Convert.ToDecimal(tbN.Text);
            string sum = "";
            string sum2n = "";
            string sumtoEq = sum;
            string sum2toEq = sum2n;


            for (decimal i = A; i < B; i += step1)
            {
                sum += "(" + fx.Replace("x", $"{i}") + ")+"; //сумма с прямоугольниками при n

            }
            sum = sum.Remove(sum.Length - 1);
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();
            sum += $"*{step1}";
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();
            //rectangle
            do
            {


                for (decimal i = A; i < B; i += step1 / 2)
                {
                    sum2n += "(" + fx.Replace("x", $"{i}") + ")" + $"*{step1 / 2}+"; //сумма с прямоугольниками 2n
                }
                sum2n = sum2n.Remove(sum2n.Length - 1);
                sum2n = Expr.Parse(sum2n.Replace(",", ".")).ToString();

                step1 /= 2;
                n *= 2;
                
                sumtoEq = sum;
                sum2toEq = sum2n;
                sum = sum2n;
                sum2n = "";
            }
            while (eps < (Math.Abs(Convert.ToDecimal(sum2toEq.Replace(".", ",")) - Convert.ToDecimal(sumtoEq.Replace(".", ","))) / (2 ^ 1/*p*/ - 1) * 2));
            Res.Text = sum2toEq.ToString();
            tbn1.Text = "n=" + (n / 2).ToString();
        }
//trapec
        private void Integral_trapezoid()
        {
 //precondition
            string fx = TB2.Text;

            var A = Convert.ToDecimal(tbA.Text);
            var B = Convert.ToDecimal(tbB.Text);
            if (A > B)
            {
                MessageBox.Show("Левая граница 'a' должна быть неменьше правой 'b'!", "Неверные границы интегрирования!");
                return;
            }
            if (A == B)
            {
                Res.Text = "0";
                Res_trap.Text = "0";
                Res_simp.Text = "0";
                return;
            }
            var eps = Convert.ToDecimal(tbEps.Text.Replace(".", ","));
            decimal step1 = (B - A) / Convert.ToDecimal(tbN.Text);
            decimal n = Convert.ToDecimal(tbN.Text);
            string sum = "";
            string sum2n = "";
            n = Convert.ToDecimal(tbN.Text);

            sum = "";
            sum2n = "";
            string sumtoEq = sum;
            string sum2toEq = sum2n;

            for (decimal i = A; i < B; i += step1)
            {
                sum += "(" + fx.Replace("x", $"{i}") + "+" + fx.Replace("x", $"{i + step1}") + ")" + $"*{step1 / 2} +"; //сумма с трапециями
            }
            sum = sum.Remove(sum.Length - 1);
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();


            do
            {

                for (decimal i = A; i < B; i += step1 / 2)
                {
                    sum2n += "(" + fx.Replace("x", $"{i}") + "+" + fx.Replace("x", $"{i + step1}") + ") + "; //сумма с трапециями 2n
                }
                sum2n ="(" + sum2n.Remove(sum2n.Length - 2) + $") * {step1 / 2 / 2}";
                sum2n = Expr.Parse(sum2n.Replace(",", ".")).ToString();

                step1 /= 2;
                n *= 2;
                sumtoEq = sum;
                sum2toEq = sum2n;
                sum = sum2n;
                sum2n = "";

            }
            while (eps < (Math.Abs(Convert.ToDecimal(sum2toEq.Replace(".", ",")) - Convert.ToDecimal(sumtoEq.Replace(".", ","))) / (2 ^ 2/*p*/ - 1) * 2));
            Res_trap.Text = sum2toEq.ToString();
            tbn2.Text = "n=" + (n / 2).ToString();
        }
 
        private void Integral_parabola()
        {
//precondition
            string fx = TB2.Text;

            var A = Convert.ToDecimal(tbA.Text);
            var B = Convert.ToDecimal(tbB.Text);
            if (A > B)
            {
                MessageBox.Show("Левая граница 'a' должна быть неменьше правой 'b'!", "Неверные границы интегрирования!");
                return;
            }
            if (A == B)
            {
                Res.Text = "0";
                Res_trap.Text = "0";
                Res_simp.Text = "0";
                return;
            }
            var eps = Convert.ToDecimal(tbEps.Text.Replace(".", ","));
            decimal step1 = (B - A) /2 * Convert.ToDecimal(tbN.Text);
            decimal n = Convert.ToDecimal(tbN.Text);
            string sum = "";
            //string sum2n = "";
//parab
            sum += "(" + fx.Replace("x", $"{A}") + ") + 4 * (" + fx.Replace("x", $"{(A+B)/2}") + ") + (" + fx.Replace("x", $"{B}") + ")";
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();
            sum = sum + $" * {(B - A) / 6}";
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();
            Res_simp.Text = sum.ToString();
            tbn3.Text = "n=" + n.ToString();
            /*const int kef = 4;
            int trigger = 0;
            sum += "(" + fx.Replace("x", $"{A}") + ")";
            for (decimal i = A + step1; i < (B - A) / 2; i += step1)
            {
                sum += "+" + $"{(trigger % 2 == 0 ? kef : kef - 2)}" + "*" + "(" + fx.Replace("x", $"{i}") + ")"; //сумма с параболами
                trigger++;
            }
            sum += "+" + "(" + fx.Replace("x", $"{B}") + ")";
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();
            sum += "*" + $"{step1 * Convert.ToDecimal(1.065) }"; //добавил множитель *h/3
            sum = Expr.Parse(sum.Replace(",", ".")).ToString();

            do
            {
                trigger = 0;
                step1 /= 2;
                n *= 2;
                sum2n += "(" + fx.Replace("x", $"{A}") + ")";
                for (decimal i = A + step1; i < (B - A) / 2; i += step1)
                {
                    sum2n += "+" + $"{(trigger % 2 == 0 ? kef : kef - 2)}" + "*" + "(" + fx.Replace("x", $"{i}") + ")"; //сумма 2n с параболами
                    trigger++;
                }
                sum2n += "+" + "(" + fx.Replace("x", $"{B}") + ")";
                sum2n = Expr.Parse(sum2n.Replace(",", ".")).ToString();
                sum2n += "*" + $"{step1 * Convert.ToDecimal(1.065)}"; //добавил множитель *h/3
                sum2n = Expr.Parse(sum2n.Replace(",", ".")).ToString();
            }
            while (eps < (Math.Abs(Convert.ToDecimal(sum2n.Replace(".", ",")) - Convert.ToDecimal(sum.Replace(".", ","))) / (2 ^ 4 - 1) ));
            
            Res_simp.Text = sum2n.ToString();
            tbn3.Text = "n=" + (n / 2).ToString();
            */
        }

    }
}