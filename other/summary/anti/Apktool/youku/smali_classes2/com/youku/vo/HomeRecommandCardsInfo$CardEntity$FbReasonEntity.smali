.class public Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;
.super Ljava/lang/Object;
.source "HomeRecommandCardsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FbReasonEntity"
.end annotation


# instance fields
.field private fb_detail:Ljava/lang/String;

.field private fbid:Ljava/lang/String;

.field private fbname:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFb_detail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->fb_detail:Ljava/lang/String;

    return-object v0
.end method

.method public getFbid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->fbid:Ljava/lang/String;

    return-object v0
.end method

.method public getFbname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->fbname:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->selected:Z

    return v0
.end method

.method public setFb_detail(Ljava/lang/String;)V
    .locals 0
    .param p1, "fb_detail"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->fb_detail:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setFbid(Ljava/lang/String;)V
    .locals 0
    .param p1, "fbid"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->fbid:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setFbname(Ljava/lang/String;)V
    .locals 0
    .param p1, "fbname"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->fbname:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;->selected:Z

    .line 286
    return-void
.end method
