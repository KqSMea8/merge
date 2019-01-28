.class public Lc8/LXe;
.super Ljava/lang/Object;
.source "MonitorCacheEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/KXe;
    }
.end annotation


# static fields
.field public static final CACHE_FILE:Ljava/lang/String; = "file"

.field public static final CACHE_MMAP:Ljava/lang/String; = "mmap"

.field public static final CACHE_SQL:Ljava/lang/String; = "sql"

.field public static final OPERATION_READ:Ljava/lang/String; = "read"

.field public static final OPERATION_WRITE:Ljava/lang/String; = "write"

.field public static final RESOURCE_OBJECT:Ljava/lang/String; = "object"

.field public static final RESOURCE_STREAM:Ljava/lang/String; = "stream"


# instance fields
.field public final cache:Ljava/lang/String;

.field public diskTime:J

.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public exception:Ljava/lang/Exception;

.field public hitMemory:Z

.field public final memoryCache:Z

.field public final moduleName:Ljava/lang/String;

.field public operation:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lc8/KXe;)V
    .locals 2
    .param p1, "builder"    # Lc8/KXe;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lc8/KXe;->access$000(Lc8/KXe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/LXe;->moduleName:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lc8/KXe;->access$100(Lc8/KXe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/LXe;->cache:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lc8/KXe;->access$200(Lc8/KXe;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lc8/LXe;->exception:Ljava/lang/Exception;

    .line 45
    invoke-static {p1}, Lc8/KXe;->access$300(Lc8/KXe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/LXe;->errorMessage:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lc8/KXe;->access$400(Lc8/KXe;)I

    move-result v0

    iput v0, p0, Lc8/LXe;->errorCode:I

    .line 47
    invoke-static {p1}, Lc8/KXe;->access$500(Lc8/KXe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/LXe;->operation:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lc8/KXe;->access$600(Lc8/KXe;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/LXe;->memoryCache:Z

    .line 49
    invoke-static {p1}, Lc8/KXe;->access$700(Lc8/KXe;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/LXe;->hitMemory:Z

    .line 50
    invoke-static {p1}, Lc8/KXe;->access$800(Lc8/KXe;)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/LXe;->diskTime:J

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lc8/KXe;Lc8/JXe;)V
    .locals 0
    .param p1, "x0"    # Lc8/KXe;
    .param p2, "x1"    # Lc8/JXe;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lc8/LXe;-><init>(Lc8/KXe;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lc8/KXe;
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "cache"    # Ljava/lang/String;
    .param p2, "memoryCache"    # Z

    .prologue
    .line 54
    new-instance v0, Lc8/KXe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lc8/KXe;-><init>(Ljava/lang/String;Ljava/lang/String;ZLc8/JXe;)V

    return-object v0
.end method
