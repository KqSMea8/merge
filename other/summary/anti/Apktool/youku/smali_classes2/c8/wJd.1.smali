.class public Lc8/wJd;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yJd;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yJd;


# direct methods
.method constructor <init>(Lc8/yJd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yJd;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/wJd;->this$0:Lc8/yJd;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lc8/wJd;->this$0:Lc8/yJd;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 71
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lc8/wJd;->this$0:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->write([BII)Lc8/yJd;

    .line 75
    return-void
.end method
