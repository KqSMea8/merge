.class public final enum Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
.super Ljava/lang/Enum;
.source "CacheEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Apf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvictionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

.field public static final enum CACHE_FULL:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

.field public static final enum CACHE_MANAGER_TRIMMED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

.field public static final enum CONTENT_STALE:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

.field public static final enum USER_FORCED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    const-string/jumbo v1, "CACHE_FULL"

    invoke-direct {v0, v1, v2}, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    .line 22
    new-instance v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    const-string/jumbo v1, "CONTENT_STALE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    .line 23
    new-instance v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    const-string/jumbo v1, "USER_FORCED"

    invoke-direct {v0, v1, v4}, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->USER_FORCED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    .line 24
    new-instance v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    const-string/jumbo v1, "CACHE_MANAGER_TRIMMED"

    invoke-direct {v0, v1, v5}, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    sget-object v1, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->USER_FORCED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->$VALUES:[Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    return-object v0
.end method

.method public static values()[Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->$VALUES:[Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    invoke-virtual {v0}, [Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    return-object v0
.end method
