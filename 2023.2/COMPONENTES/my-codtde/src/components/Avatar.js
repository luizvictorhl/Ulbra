// eslint-disable-next-line react/prop-types
function Avatar({ srcImage, size }) {
  return (
    <img
      src={srcImage}
      style={{ borderRadius: "60px" }}
      width={size}
      height={size}
      alt="imagem pessoa"
    />
  );
}

export default Avatar;
