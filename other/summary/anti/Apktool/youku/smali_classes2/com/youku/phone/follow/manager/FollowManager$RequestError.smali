.class public final enum Lcom/youku/phone/follow/manager/FollowManager$RequestError;
.super Ljava/lang/Enum;
.source "FollowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/follow/manager/FollowManager$RequestError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/follow/manager/FollowManager$RequestError;

.field public static final enum ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

.field public static final enum ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

.field public static final enum ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

.field public static final enum ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

.field public static final enum ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    const-string/jumbo v1, "ERROR_SESSION_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/follow/manager/FollowManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    .line 81
    new-instance v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    const-string/jumbo v1, "ERROR_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/follow/manager/FollowManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    .line 82
    new-instance v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    const-string/jumbo v1, "ERROR_SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/follow/manager/FollowManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    .line 83
    new-instance v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    const-string/jumbo v1, "ERROR_BUSINESS"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/follow/manager/FollowManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    .line 84
    new-instance v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/follow/manager/FollowManager$RequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->$VALUES:[Lcom/youku/phone/follow/manager/FollowManager$RequestError;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/follow/manager/FollowManager$RequestError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/follow/manager/FollowManager$RequestError;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->$VALUES:[Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-virtual {v0}, [Lcom/youku/phone/follow/manager/FollowManager$RequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    return-object v0
.end method
