.class public Lc8/SBo;
.super Ljava/lang/Object;
.source "DrawerEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UBo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field private jump_info:Lc8/WBo;

.field private sign_mark:Lc8/LCo;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSign_mark()Lc8/LCo;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lc8/SBo;->sign_mark:Lc8/LCo;

    return-object v0
.end method

.method public jump_info()Lc8/WBo;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lc8/SBo;->jump_info:Lc8/WBo;

    return-object v0
.end method

.method public setJump_info(Lc8/WBo;)V
    .locals 0
    .param p1, "jump_info"    # Lc8/WBo;

    .prologue
    .line 422
    iput-object p1, p0, Lc8/SBo;->jump_info:Lc8/WBo;

    .line 423
    return-void
.end method

.method public setSign_mark(Lc8/LCo;)V
    .locals 0
    .param p1, "sign_mark"    # Lc8/LCo;

    .prologue
    .line 426
    iput-object p1, p0, Lc8/SBo;->sign_mark:Lc8/LCo;

    .line 427
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lc8/SBo;->title:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lc8/SBo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tag{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/SBo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", jump_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/SBo;->jump_info:Lc8/WBo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
