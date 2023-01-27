#include<matrix.h> // à modifier
#include<vector.h>

int main() {
  vector_t v,w;
  int i,j;
  double pi=3.14159265;
  matrix_t m = make_rotation_matrix(pi/6);
  
  v= make_vector(7);
  printf("Espace mémoire de la struct: %d\n", sizeof(v));
  printf("Espace mémoire des valeurs: %d\n", 7*sizeof(double));
  printf("Espace mémoire total du vecteur: %d\n", sizeof(v)+7*sizeof(double));
  
  v_set(v, 0, 1);
  v_set(v, 1, -1);
  //w = apply(m, v);
  m_print(m);
  v_print(w);

  free_vector(v);
  free_matrix(m);

  return EXIT_SUCCESS;
}
