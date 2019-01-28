.class public Lc8/WVp;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YVp;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YVp;


# direct methods
.method constructor <init>(Lc8/YVp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/YVp;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/WVp;->this$0:Lc8/YVp;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/WVp;->this$0:Lc8/YVp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 74
    iget-object v0, p0, Lc8/WVp;->this$0:Lc8/YVp;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 75
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lc8/WVp;->this$0:Lc8/YVp;

    invoke-virtual {v0, p1, p2, p3}, Lc8/YVp;->write([BII)Lc8/YVp;

    .line 79
    return-void
.end method
