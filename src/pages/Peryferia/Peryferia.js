import NavBar from "../../Components/Navbar";
import Categories from "../../Components/Categories";
import Footer from "../../Components/Footer";
import Products from "../../Components/Products";

const Peryferia = () => {
    return ( 
        <>
        <NavBar />
            <Categories />
            <Products kategoria={"Peryferia"}/>
            <Footer/>
        </>
    );
}
 
export default Peryferia;