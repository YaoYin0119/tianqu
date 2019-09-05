<template>
    <div>
        <mt-tab-container>
            <mt-tab-container-item>
                <detailsTitle></detailsTitle>
                <indexDetails></indexDetails>
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
import detailsTitle from './common/detailsTitle.vue'
import productDetails from './common/productDetails.vue'
export default{
    data(){
        return{}
    },
    components:{
        'detailstitle':detailsTitle,
        'productdetails':productDetails
    }
}
</script>