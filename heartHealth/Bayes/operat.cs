using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;

namespace medsite
{
    public class operat
    {

        public int[][] MatrixInt(int rows, int cols)
        {
            int[][] result = new int[rows][];
            for (int i = 0; i < rows; ++i)
                result[i] = new int[cols];
            return result;
        }


        public string[][] LoadData(DataTable f, char delimit)
        {
            int r = f.Rows.Count;
            int c = f.Columns.Count;

            string[][] result = MatrixString(r, c);
      
            //string[] tokens = null;
            
           
           for(int i=0;i<r;i++)
            {
                
                for (int j = 0; j < c; j++)
                {
                    result[i][j] = f.Rows[i][j].ToString();
                }
             
            }
             
            return result;
        }

        public string[][] MatrixString(int rows, int cols)
        {
            string[][] result = new string[rows][];
            for (int i = 0; i < rows; ++i)
                result[i] = new string[cols];
            return result;
        }
        public int ArgMax(double[] vector)
        {
            int result = 0;
            double maxV = vector[0];
            for (int i = 0; i < vector.Length; ++i)
            {
                if (vector[i] > maxV)
                {
                    maxV = vector[i];
                    result = i;
                }
            }
            return result;
        }






    }
}