.class public Lc8/uH;
.super Ljava/lang/Object;
.source "WVFixedThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferWrapper"
.end annotation


# instance fields
.field private isFree:Z

.field public tempBuffer:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uH;->tempBuffer:[B

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/uH;->isFree:Z

    .line 67
    sget v0, Lc8/vH;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/uH;->tempBuffer:[B

    .line 68
    return-void
.end method

.method static synthetic access$000(Lc8/uH;)Z
    .locals 1
    .param p0, "x0"    # Lc8/uH;

    .prologue
    .line 61
    iget-boolean v0, p0, Lc8/uH;->isFree:Z

    return v0
.end method

.method static synthetic access$002(Lc8/uH;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/uH;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lc8/uH;->isFree:Z

    return p1
.end method


# virtual methods
.method public isFree()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lc8/uH;->isFree:Z

    return v0
.end method

.method public setIsFree(Z)V
    .locals 0
    .param p1, "isfree"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lc8/uH;->isFree:Z

    .line 76
    return-void
.end method
