.class public final Lc8/tvb;
.super Ljava/lang/Object;
.source "WXRequestFactory.java"

# interfaces
.implements Lc8/gM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uvb;->generateANetRequest(Ljava/lang/String;)Lc8/uM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field isCompleted:Z

.field postedLen:I

.field final synthetic val$body:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object p1, p0, Lc8/tvb;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lc8/tvb;->isCompleted:Z

    .line 46
    iput v0, p0, Lc8/tvb;->postedLen:I

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lc8/tvb;->isCompleted:Z

    return v0
.end method

.method public read([B)I
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 50
    if-nez p1, :cond_1

    move v1, v2

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    iget-object v3, p0, Lc8/tvb;->val$body:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lc8/tvb;->postedLen:I

    sub-int v0, v3, v4

    .line 54
    .local v0, "dataLen":I
    array-length v3, p1

    if-ge v0, v3, :cond_2

    move v1, v0

    .line 55
    .local v1, "len":I
    :goto_1
    iget-object v3, p0, Lc8/tvb;->val$body:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lc8/tvb;->postedLen:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v2, p0, Lc8/tvb;->postedLen:I

    add-int/2addr v2, v1

    iput v2, p0, Lc8/tvb;->postedLen:I

    .line 57
    iget-object v2, p0, Lc8/tvb;->val$body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lc8/tvb;->postedLen:I

    if-ne v2, v3, :cond_0

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/tvb;->isCompleted:Z

    goto :goto_0

    .line 54
    .end local v1    # "len":I
    :cond_2
    array-length v1, p1

    goto :goto_1
.end method
