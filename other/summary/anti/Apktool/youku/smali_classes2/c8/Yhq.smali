.class public Lc8/Yhq;
.super Ljava/lang/Object;
.source "UrlConnectionClient.java"

# interfaces
.implements Lc8/Giq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedInputStream"
.end annotation


# instance fields
.field private final length:J

.field private final mimeType:Ljava/lang/String;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lc8/Yhq;->mimeType:Ljava/lang/String;

    .line 104
    iput-wide p2, p0, Lc8/Yhq;->length:J

    .line 105
    iput-object p4, p0, Lc8/Yhq;->stream:Ljava/io/InputStream;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/io/InputStream;Lc8/Xhq;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/io/InputStream;
    .param p5, "x3"    # Lc8/Xhq;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Yhq;-><init>(Ljava/lang/String;JLjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lc8/Yhq;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lc8/Yhq;->length:J

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lc8/Yhq;->mimeType:Ljava/lang/String;

    return-object v0
.end method
