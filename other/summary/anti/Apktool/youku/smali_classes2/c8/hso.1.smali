.class public Lc8/hso;
.super Ljava/lang/Object;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/usercenter/vo/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAvatar"
.end annotation


# instance fields
.field public bigAvatar:Ljava/lang/String;

.field public largeAvatar:Ljava/lang/String;

.field public middleAvatar:Ljava/lang/String;

.field public smallAvatar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    return-void
.end method


# virtual methods
.method public getLarggestAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lc8/hso;->largeAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lc8/hso;->largeAvatar:Ljava/lang/String;

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lc8/hso;->bigAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lc8/hso;->bigAvatar:Ljava/lang/String;

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lc8/hso;->middleAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lc8/hso;->middleAvatar:Ljava/lang/String;

    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lc8/hso;->smallAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    iget-object v0, p0, Lc8/hso;->smallAvatar:Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmallestAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lc8/hso;->smallAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lc8/hso;->smallAvatar:Ljava/lang/String;

    .line 446
    :goto_0
    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lc8/hso;->middleAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lc8/hso;->middleAvatar:Ljava/lang/String;

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lc8/hso;->bigAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lc8/hso;->bigAvatar:Ljava/lang/String;

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lc8/hso;->largeAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 444
    iget-object v0, p0, Lc8/hso;->largeAvatar:Ljava/lang/String;

    goto :goto_0

    .line 446
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
