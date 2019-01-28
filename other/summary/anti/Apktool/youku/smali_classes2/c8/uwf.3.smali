.class public Lc8/uwf;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"

# interfaces
.implements Lc8/Opf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vwf;->put(Ljava/lang/String;I[BII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vwf;

.field final synthetic val$bytes:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lc8/vwf;[BII)V
    .locals 0
    .param p1, "this$0"    # Lc8/vwf;

    .prologue
    .line 158
    iput-object p1, p0, Lc8/uwf;->this$0:Lc8/vwf;

    iput-object p2, p0, Lc8/uwf;->val$bytes:[B

    iput p3, p0, Lc8/uwf;->val$offset:I

    iput p4, p0, Lc8/uwf;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lc8/uwf;->val$bytes:[B

    iget v1, p0, Lc8/uwf;->val$offset:I

    iget v2, p0, Lc8/uwf;->val$length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    return-void
.end method
