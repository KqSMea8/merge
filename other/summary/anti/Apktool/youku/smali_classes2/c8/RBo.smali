.class public Lc8/RBo;
.super Ljava/lang/Object;
.source "DrawerEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UBo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderTitleImage"
.end annotation


# instance fields
.field private image:Ljava/lang/String;

.field private image_jump_info:Lc8/WBo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lc8/RBo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_jump_info()Lc8/WBo;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lc8/RBo;->image_jump_info:Lc8/WBo;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lc8/RBo;->image:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setImage_jump_info(Lc8/WBo;)V
    .locals 0
    .param p1, "image_jump_info"    # Lc8/WBo;

    .prologue
    .line 316
    iput-object p1, p0, Lc8/RBo;->image_jump_info:Lc8/WBo;

    .line 317
    return-void
.end method
