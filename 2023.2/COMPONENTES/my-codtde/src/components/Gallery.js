import Profile from "./Profile";
// eslint-disable-next-line react/prop-types
function Gallery({ title }) {
  return (
    <>
      <h1 style={{ margin: "10px" }}> {title} </h1>{" "}
      <Profile
        name="Maria"
        profession="Physicist"
        awards="Nobel"
        discovered="polonium"
        srcImg="https://i.imgur.com/szV5sdG.jpeg"
      />
      <Profile
        name="Katsuko"
        profession="geachemist"
        awards="Miake Prize for geochemistry"
        discovered="amethod for measuring carbon dioxide in seawater"
        srcImg="https://i.imgur.com/YfeOqp2.jpeg"
      />
    </>
  );
}

export default Gallery;
