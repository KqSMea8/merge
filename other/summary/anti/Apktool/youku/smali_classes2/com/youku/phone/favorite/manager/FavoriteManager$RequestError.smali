.class public final enum Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;
.super Ljava/lang/Enum;
.source "FavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Yuk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

.field public static final enum ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

.field public static final enum ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

.field public static final enum ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

.field public static final enum ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

.field public static final enum ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    const-string/jumbo v1, "ERROR_SESSION_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    .line 102
    new-instance v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    const-string/jumbo v1, "ERROR_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    .line 103
    new-instance v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    const-string/jumbo v1, "ERROR_SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    .line 104
    new-instance v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    const-string/jumbo v1, "ERROR_BUSINESS"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    .line 105
    new-instance v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->$VALUES:[Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->$VALUES:[Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-virtual {v0}, [Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    return-object v0
.end method
