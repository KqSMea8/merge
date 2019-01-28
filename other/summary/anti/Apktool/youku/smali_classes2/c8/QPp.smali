.class public Lc8/QPp;
.super Lc8/LPp;
.source "DefaultCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SPp;->readResponse(Ljava/net/HttpURLConnection;Lc8/FPp;)Lc8/KPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SPp;

.field final synthetic val$is:Ljava/io/InputStream;

.field final synthetic val$length:I

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/SPp;Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lc8/QPp;->this$0:Lc8/SPp;

    iput-object p2, p0, Lc8/QPp;->val$mimeType:Ljava/lang/String;

    iput p3, p0, Lc8/QPp;->val$length:I

    iput-object p4, p0, Lc8/QPp;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Lc8/LPp;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lc8/QPp;->val$is:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Lc8/QPp;->val$length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lc8/QPp;->val$mimeType:Ljava/lang/String;

    return-object v0
.end method
