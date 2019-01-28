.class public Lc8/twf;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"

# interfaces
.implements Lc8/Opf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vwf;->put(Ljava/lang/String;ILjava/io/InputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vwf;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lc8/vwf;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lc8/vwf;

    .prologue
    .line 141
    iput-object p1, p0, Lc8/twf;->this$0:Lc8/vwf;

    iput-object p2, p0, Lc8/twf;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lc8/twf;->val$inputStream:Ljava/io/InputStream;

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->bytesPoolBuilder()Lc8/tvf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/tvf;->build()Lc8/JNf;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/pwf;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lc8/JNf;)J

    .line 145
    return-void
.end method
