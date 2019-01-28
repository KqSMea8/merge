.class public final Lc8/Mdc;
.super Ljava/io/FileOutputStream;
.source "ZipExtractorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ndc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProgressReportingOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ndc;


# direct methods
.method public constructor <init>(Lc8/Ndc;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lc8/Mdc;->this$0:Lc8/Ndc;

    .line 187
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 188
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 193
    iget-object v0, p0, Lc8/Mdc;->this$0:Lc8/Ndc;

    invoke-static {v0, p3}, Lc8/Ndc;->access$012(Lc8/Ndc;I)I

    .line 194
    iget-object v0, p0, Lc8/Mdc;->this$0:Lc8/Ndc;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/Mdc;->this$0:Lc8/Ndc;

    invoke-static {v3}, Lc8/Ndc;->access$000(Lc8/Ndc;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/Ndc;->access$100(Lc8/Ndc;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method
