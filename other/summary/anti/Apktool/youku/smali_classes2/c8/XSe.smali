.class public final Lc8/XSe;
.super Lc8/ZSe;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZSe;->create(Lc8/MSe;[BII)Lc8/ZSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lc8/MSe;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lc8/MSe;I[BI)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lc8/XSe;->val$contentType:Lc8/MSe;

    iput p2, p0, Lc8/XSe;->val$byteCount:I

    iput-object p3, p0, Lc8/XSe;->val$content:[B

    iput p4, p0, Lc8/XSe;->val$offset:I

    invoke-direct {p0}, Lc8/ZSe;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lc8/XSe;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/XSe;->val$contentType:Lc8/MSe;

    return-object v0
.end method

.method public writeTo(Lc8/ZVp;)V
    .locals 3
    .param p1, "sink"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lc8/XSe;->val$content:[B

    iget v1, p0, Lc8/XSe;->val$offset:I

    iget v2, p0, Lc8/XSe;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lc8/ZVp;->write([BII)Lc8/ZVp;

    .line 97
    return-void
.end method
