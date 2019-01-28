.class public final Lc8/def;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field private id:J

.field public tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lc8/def;->id:J

    .line 65
    iput-object p3, p0, Lc8/def;->tag:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lc8/def;->cacheFile:Ljava/io/File;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/io/File;Lc8/cef;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/io/File;
    .param p5, "x3"    # Lc8/cef;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/def;-><init>(JLjava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lc8/def;)J
    .locals 2
    .param p0, "x0"    # Lc8/def;

    .prologue
    .line 55
    iget-wide v0, p0, Lc8/def;->id:J

    return-wide v0
.end method
