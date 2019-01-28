.class public Lc8/rig;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_SUPPORTED_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.DiffDevOAuthFactory"

.field public static final VERSION_1:I = 0x1

.field private static v1Instance:Lc8/sig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/rig;->v1Instance:Lc8/sig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiffDevOAuth()Lc8/sig;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lc8/rig;->getDiffDevOAuth(I)Lc8/sig;

    move-result-object v0

    return-object v0
.end method

.method public static getDiffDevOAuth(I)Lc8/sig;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getDiffDevOAuth, version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    const-string/jumbo v1, "MicroMsg.SDK.DiffDevOAuthFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDiffDevOAuth fail, unsupported version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lc8/rig;->v1Instance:Lc8/sig;

    if-nez v0, :cond_1

    new-instance v0, Lc8/uig;

    invoke-direct {v0}, Lc8/uig;-><init>()V

    sput-object v0, Lc8/rig;->v1Instance:Lc8/sig;

    :cond_1
    sget-object v0, Lc8/rig;->v1Instance:Lc8/sig;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
