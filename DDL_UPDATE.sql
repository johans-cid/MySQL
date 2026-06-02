ALTER TABLE direcciones RENAME COLUMN id TO id_direccion;
ALTER TABLE direcciones RENAME COLUMN id TO id_empresa;
ALTER TABLE direcciones RENAME COLUMN id TO id_tipo_cliente;
ALTER TABLE direcciones RENAME COLUMN id TO id_cliente;
ALTER TABLE direcciones RENAME COLUMN id TO id_tipo_producto;
ALTER TABLE direcciones RENAME COLUMN id TO id_producto;

ALTER TABLE "direcciones" CHANGE "id" "id_direccion";
ALTER TABLE "empresas" CHANGE "id" "id_empresa";
ALTER TABLE "tipo_cliente" CHANGE "id" "id_tipo_cliente";
ALTER TABLE "clientes" CHANGE "id" "id_cliente";
ALTER TABLE "tipo_producto" CHANGE "id" "id_tipo_producto";
ALTER TABLE "producto" CHANGE "id" "id_producto";