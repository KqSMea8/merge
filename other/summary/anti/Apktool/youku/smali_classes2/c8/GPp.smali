.class public final Lc8/GPp;
.super Lc8/HPp;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HPp;->create(Ljava/lang/String;[B)Lc8/HPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$content:[B

.field final synthetic val$contentType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/GPp;->val$contentType:Ljava/lang/String;

    iput-object p2, p0, Lc8/GPp;->val$content:[B

    invoke-direct {p0}, Lc8/HPp;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lc8/GPp;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/GPp;->val$contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lc8/GPp;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 60
    return-void
.end method
