.class public Lc8/lUe;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mUe;-><init>(Lc8/aWp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mUe;


# direct methods
.method constructor <init>(Lc8/mUe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mUe;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/lUe;->this$0:Lc8/mUe;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 69
    .local v0, "result":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/lUe;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lc8/tUe;->DICTIONARY:[B

    invoke-virtual {p0, v1}, Lc8/lUe;->setDictionary([B)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 73
    :cond_0
    return v0
.end method
