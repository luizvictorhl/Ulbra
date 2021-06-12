function calcular() {
    let qtd=document.getElementById('quantidade').value
    let res=document.getElementById('res')

    var calcula=(qtd*0.30)
    if (qtd>=100) {
        res.innerHTML=(`O total que deve ser pago R$${calcula*1.25}`)
    } else if (qtd >= 200) {
        res.innerHTML=(`O total que deve ser pago R$${calcula*1.50}`)
    }else{
        res.innerHTML=(`O total que deve ser pago R$${calcula}`)
    }
}