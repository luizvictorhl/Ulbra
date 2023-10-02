import Avatar from "./Avatar"
// eslint-disable-next-line react/prop-types
function Profile({name, profession, awards, discovered, srcImg}) {
    return(
        <div style={{border: "1px solid black", borderRadius: "5px", padding:"5px", margin:"10px"}}>
            <h1>{name}</h1>
            <Avatar srcImage={srcImg} size={40}/>
            <ul>
                <li>Profession: {profession}</li>
                <li>Awards: {awards}</li>
                <li>Discoverered: {discovered}</li>
            </ul>
        </div>
    )
}

export default Profile