.class public final Lc8/zId;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field private final body:Lc8/GId;

.field private final headers:Lc8/qId;


# direct methods
.method private constructor <init>(Lc8/qId;Lc8/GId;)V
    .locals 0
    .param p1, "headers"    # Lc8/qId;
    .param p2, "body"    # Lc8/GId;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lc8/zId;->headers:Lc8/qId;

    .line 254
    iput-object p2, p0, Lc8/zId;->body:Lc8/GId;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lc8/zId;)Lc8/qId;
    .locals 1
    .param p0, "x0"    # Lc8/zId;

    .prologue
    .line 212
    iget-object v0, p0, Lc8/zId;->headers:Lc8/qId;

    return-object v0
.end method

.method static synthetic access$100(Lc8/zId;)Lc8/GId;
    .locals 1
    .param p0, "x0"    # Lc8/zId;

    .prologue
    .line 212
    iget-object v0, p0, Lc8/zId;->body:Lc8/GId;

    return-object v0
.end method

.method public static create(Lc8/qId;Lc8/GId;)Lc8/zId;
    .locals 2
    .param p0, "headers"    # Lc8/qId;
    .param p1, "body"    # Lc8/GId;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p0, v0}, Lc8/qId;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    if-eqz p0, :cond_2

    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lc8/qId;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_2
    new-instance v0, Lc8/zId;

    invoke-direct {v0, p0, p1}, Lc8/zId;-><init>(Lc8/qId;Lc8/GId;)V

    return-object v0
.end method
