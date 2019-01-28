.class public final Lc8/KXe;
.super Ljava/lang/Object;
.source "MonitorCacheEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LXe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final cache:Ljava/lang/String;

.field private diskTime:J

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private hitMemory:Z

.field private final memoryCache:Z

.field private final moduleName:Ljava/lang/String;

.field private operation:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cache"    # Ljava/lang/String;
    .param p3, "memoryCache"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lc8/KXe;->moduleName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lc8/KXe;->cache:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lc8/KXe;->memoryCache:Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLc8/JXe;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lc8/JXe;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lc8/KXe;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lc8/KXe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/KXe;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/KXe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/KXe;->cache:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/KXe;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/KXe;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$300(Lc8/KXe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/KXe;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/KXe;)I
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget v0, p0, Lc8/KXe;->errorCode:I

    return v0
.end method

.method static synthetic access$500(Lc8/KXe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/KXe;->operation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/KXe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-boolean v0, p0, Lc8/KXe;->memoryCache:Z

    return v0
.end method

.method static synthetic access$700(Lc8/KXe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-boolean v0, p0, Lc8/KXe;->hitMemory:Z

    return v0
.end method

.method static synthetic access$800(Lc8/KXe;)J
    .locals 2
    .param p0, "x0"    # Lc8/KXe;

    .prologue
    .line 57
    iget-wide v0, p0, Lc8/KXe;->diskTime:J

    return-wide v0
.end method


# virtual methods
.method public build()Lc8/LXe;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lc8/LXe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/LXe;-><init>(Lc8/KXe;Lc8/JXe;)V

    return-object v0
.end method

.method public diskTime(J)Lc8/KXe;
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lc8/KXe;->diskTime:J

    .line 109
    return-object p0
.end method

.method public errorCode(I)Lc8/KXe;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 93
    iput p1, p0, Lc8/KXe;->errorCode:I

    .line 94
    return-object p0
.end method

.method public errorMessage(Ljava/lang/String;)Lc8/KXe;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/KXe;->errorMessage:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public exception(Ljava/lang/Exception;)Lc8/KXe;
    .locals 0
    .param p1, "val"    # Ljava/lang/Exception;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/KXe;->exception:Ljava/lang/Exception;

    .line 84
    return-object p0
.end method

.method public hitMemory(Z)Lc8/KXe;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lc8/KXe;->hitMemory:Z

    .line 104
    return-object p0
.end method

.method public operation(Ljava/lang/String;)Lc8/KXe;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/KXe;->operation:Ljava/lang/String;

    .line 99
    return-object p0
.end method
