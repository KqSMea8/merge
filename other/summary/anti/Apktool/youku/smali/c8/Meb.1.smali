.class public Lc8/Meb;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Leb;,
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private final maskPath:Lc8/keb;

.field private final opacity:Lc8/Zdb;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lc8/keb;Lc8/Zdb;)V
    .locals 0
    .param p1, "maskMode"    # Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .param p2, "maskPath"    # Lc8/keb;
    .param p3, "opacity"    # Lc8/Zdb;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lc8/Meb;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 23
    iput-object p2, p0, Lc8/Meb;->maskPath:Lc8/keb;

    .line 24
    iput-object p3, p0, Lc8/Meb;->opacity:Lc8/Zdb;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lc8/keb;Lc8/Zdb;Lc8/Keb;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .param p2, "x1"    # Lc8/keb;
    .param p3, "x2"    # Lc8/Zdb;
    .param p4, "x3"    # Lc8/Keb;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lc8/Meb;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lc8/keb;Lc8/Zdb;)V

    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/Meb;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public getMaskPath()Lc8/keb;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/Meb;->maskPath:Lc8/keb;

    return-object v0
.end method

.method public getOpacity()Lc8/Zdb;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/Meb;->opacity:Lc8/Zdb;

    return-object v0
.end method
