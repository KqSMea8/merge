.class public Lc8/Sdf;
.super Ljava/lang/Object;
.source "ImageOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageOptionBuilder"
.end annotation


# instance fields
.field private bizId:I

.field private enableSharpen:Z

.field private failureImageScaleType:Landroid/widget/ImageView$ScaleType;

.field private failurePlaceholderResId:I

.field private height:I

.field private isFixHeight:Z

.field private isFixWidth:Z

.field private isOriginalPic:Z

.field private loadingImageScaleType:Landroid/widget/ImageView$ScaleType;

.field private loadingPlaceholderResId:I

.field private moduleName:Ljava/lang/String;

.field private successImageScaleType:Landroid/widget/ImageView$ScaleType;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/Sdf;)I
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget v0, p0, Lc8/Sdf;->bizId:I

    return v0
.end method

.method static synthetic access$100(Lc8/Sdf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Sdf;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/Sdf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/Sdf;->isFixHeight:Z

    return v0
.end method

.method static synthetic access$1100(Lc8/Sdf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/Sdf;->isFixWidth:Z

    return v0
.end method

.method static synthetic access$1200(Lc8/Sdf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/Sdf;->isOriginalPic:Z

    return v0
.end method

.method static synthetic access$200(Lc8/Sdf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/Sdf;->enableSharpen:Z

    return v0
.end method

.method static synthetic access$300(Lc8/Sdf;)I
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget v0, p0, Lc8/Sdf;->loadingPlaceholderResId:I

    return v0
.end method

.method static synthetic access$400(Lc8/Sdf;)I
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget v0, p0, Lc8/Sdf;->failurePlaceholderResId:I

    return v0
.end method

.method static synthetic access$500(Lc8/Sdf;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Sdf;->successImageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Sdf;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Sdf;->failureImageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$700(Lc8/Sdf;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Sdf;->loadingImageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$800(Lc8/Sdf;)I
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget v0, p0, Lc8/Sdf;->width:I

    return v0
.end method

.method static synthetic access$900(Lc8/Sdf;)I
    .locals 1
    .param p0, "x0"    # Lc8/Sdf;

    .prologue
    .line 51
    iget v0, p0, Lc8/Sdf;->height:I

    return v0
.end method


# virtual methods
.method public build()Lc8/Tdf;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lc8/Tdf;

    invoke-direct {v0, p0}, Lc8/Tdf;-><init>(Lc8/Sdf;)V

    return-object v0
.end method

.method public setBizId(I)Lc8/Sdf;
    .locals 0
    .param p1, "bizId"    # I

    .prologue
    .line 90
    iput p1, p0, Lc8/Sdf;->bizId:I

    .line 91
    return-object p0
.end method

.method public setEnableSharpen(Z)Lc8/Sdf;
    .locals 0
    .param p1, "enableSharpen"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lc8/Sdf;->enableSharpen:Z

    .line 111
    return-object p0
.end method

.method public setFailureImageScaleType(Landroid/widget/ImageView$ScaleType;)Lc8/Sdf;
    .locals 0
    .param p1, "failureImageScaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 134
    iput-object p1, p0, Lc8/Sdf;->failureImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 135
    return-object p0
.end method

.method public setFailurePlaceholderResId(I)Lc8/Sdf;
    .locals 0
    .param p1, "failurePlaceholderResId"    # I

    .prologue
    .line 122
    iput p1, p0, Lc8/Sdf;->failurePlaceholderResId:I

    .line 123
    return-object p0
.end method

.method public setHeight(I)Lc8/Sdf;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 100
    iput p1, p0, Lc8/Sdf;->height:I

    .line 101
    return-object p0
.end method

.method public setIsFixHeight(Z)Lc8/Sdf;
    .locals 0
    .param p1, "isFixHeight"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lc8/Sdf;->isFixHeight:Z

    .line 86
    return-object p0
.end method

.method public setIsFixWidth(Z)Lc8/Sdf;
    .locals 0
    .param p1, "isFixWidth"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lc8/Sdf;->isFixWidth:Z

    .line 81
    return-object p0
.end method

.method public setIsOriginalPic(Z)Lc8/Sdf;
    .locals 0
    .param p1, "isOriginalPic"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lc8/Sdf;->isOriginalPic:Z

    .line 146
    return-object p0
.end method

.method public setLoadingImageScaleType(Landroid/widget/ImageView$ScaleType;)Lc8/Sdf;
    .locals 0
    .param p1, "loadingImageScaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/Sdf;->loadingImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 141
    return-object p0
.end method

.method public setLoadingPlaceholderResId(I)Lc8/Sdf;
    .locals 0
    .param p1, "loadingPlaceholderResId"    # I

    .prologue
    .line 116
    iput p1, p0, Lc8/Sdf;->loadingPlaceholderResId:I

    .line 117
    return-object p0
.end method

.method public setModuleName(Ljava/lang/String;)Lc8/Sdf;
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/Sdf;->moduleName:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setSuccessImageScaleType(Landroid/widget/ImageView$ScaleType;)Lc8/Sdf;
    .locals 0
    .param p1, "successImageScaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 128
    iput-object p1, p0, Lc8/Sdf;->successImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 129
    return-object p0
.end method

.method public setWidth(I)Lc8/Sdf;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 95
    iput p1, p0, Lc8/Sdf;->width:I

    .line 96
    return-object p0
.end method
