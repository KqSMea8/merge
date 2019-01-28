.class public Lc8/GE;
.super Ljava/lang/Object;
.source "WVCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadParams"
.end annotation


# instance fields
.field public bizCode:Ljava/lang/String;

.field public extraData:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public images:Lorg/json/JSONArray;

.field public isLastPic:Z

.field public localUrl:Ljava/lang/String;

.field public maxSelect:I

.field public mode:Ljava/lang/String;

.field public mutipleSelection:Ljava/lang/String;

.field public needBase64:Z

.field public needLogin:Z

.field public needZoom:Z

.field final synthetic this$0:Lc8/HE;

.field public type:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/HE;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 537
    iput-object p1, p0, Lc8/GE;->this$0:Lc8/HE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/GE;->identifier:Ljava/lang/String;

    .line 528
    const-string/jumbo v0, "both"

    iput-object v0, p0, Lc8/GE;->mode:Ljava/lang/String;

    .line 529
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    .line 530
    const/16 v0, 0x9

    iput v0, p0, Lc8/GE;->maxSelect:I

    .line 531
    iput-boolean v2, p0, Lc8/GE;->isLastPic:Z

    .line 532
    iput-boolean v2, p0, Lc8/GE;->needZoom:Z

    .line 533
    iput-boolean v1, p0, Lc8/GE;->needLogin:Z

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/GE;->images:Lorg/json/JSONArray;

    .line 535
    iput-boolean v1, p0, Lc8/GE;->needBase64:Z

    .line 539
    return-void
.end method

.method public constructor <init>(Lc8/HE;Lc8/GE;)V
    .locals 3
    .param p2, "params"    # Lc8/GE;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 541
    iput-object p1, p0, Lc8/GE;->this$0:Lc8/HE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/GE;->identifier:Ljava/lang/String;

    .line 528
    const-string/jumbo v0, "both"

    iput-object v0, p0, Lc8/GE;->mode:Ljava/lang/String;

    .line 529
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    .line 530
    const/16 v0, 0x9

    iput v0, p0, Lc8/GE;->maxSelect:I

    .line 531
    iput-boolean v2, p0, Lc8/GE;->isLastPic:Z

    .line 532
    iput-boolean v2, p0, Lc8/GE;->needZoom:Z

    .line 533
    iput-boolean v1, p0, Lc8/GE;->needLogin:Z

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/GE;->images:Lorg/json/JSONArray;

    .line 535
    iput-boolean v1, p0, Lc8/GE;->needBase64:Z

    .line 542
    iget-object v0, p2, Lc8/GE;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->filePath:Ljava/lang/String;

    .line 543
    iget-object v0, p2, Lc8/GE;->localUrl:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->localUrl:Ljava/lang/String;

    .line 544
    iget v0, p2, Lc8/GE;->type:I

    iput v0, p0, Lc8/GE;->type:I

    .line 545
    iget-object v0, p2, Lc8/GE;->v:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->v:Ljava/lang/String;

    .line 546
    iget-object v0, p2, Lc8/GE;->bizCode:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->bizCode:Ljava/lang/String;

    .line 547
    iget-object v0, p2, Lc8/GE;->extraData:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->extraData:Ljava/lang/String;

    .line 548
    iget-object v0, p2, Lc8/GE;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->identifier:Ljava/lang/String;

    .line 549
    iget-object v0, p2, Lc8/GE;->mode:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->mode:Ljava/lang/String;

    .line 550
    iget-object v0, p2, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    iput-object v0, p0, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    .line 551
    iget v0, p2, Lc8/GE;->maxSelect:I

    iput v0, p0, Lc8/GE;->maxSelect:I

    .line 552
    iget-boolean v0, p2, Lc8/GE;->isLastPic:Z

    iput-boolean v0, p0, Lc8/GE;->isLastPic:Z

    .line 553
    iget-object v0, p2, Lc8/GE;->images:Lorg/json/JSONArray;

    iput-object v0, p0, Lc8/GE;->images:Lorg/json/JSONArray;

    .line 554
    iget-boolean v0, p2, Lc8/GE;->needZoom:Z

    iput-boolean v0, p0, Lc8/GE;->needZoom:Z

    .line 555
    iget-boolean v0, p2, Lc8/GE;->needLogin:Z

    iput-boolean v0, p0, Lc8/GE;->needLogin:Z

    .line 556
    iget-boolean v0, p2, Lc8/GE;->needBase64:Z

    iput-boolean v0, p0, Lc8/GE;->needBase64:Z

    .line 557
    return-void
.end method
