.class public Lc8/II;
.super Ljava/lang/Object;
.source "WVWrapWebResourceResponse.java"


# instance fields
.field public mEncoding:Ljava/lang/String;

.field public mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInputStream:Ljava/io/InputStream;

.field public mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lc8/II;->mMimeType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lc8/II;->mEncoding:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lc8/II;->mInputStream:Ljava/io/InputStream;

    .line 16
    iput-object p4, p0, Lc8/II;->mHeaders:Ljava/util/Map;

    .line 17
    return-void
.end method
