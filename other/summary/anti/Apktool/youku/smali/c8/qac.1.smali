.class public Lc8/qac;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/rac;)V
    .locals 0

    invoke-direct {p0}, Lc8/qac;-><init>()V

    return-void
.end method

.method public static a()Lc8/qac;
    .locals 1

    sget-object v0, Lc8/sac;->a:Lc8/qac;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/trade/container/b/d;Lc8/tac;)Z
    .locals 2

    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/sdk/trade/container/b/d;->a:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/sdk/trade/container/b/d;->authParams:Ljava/lang/String;

    new-instance v1, Lc8/rac;

    invoke-direct {v1, p0, p2}, Lc8/rac;-><init>(Lc8/qac;Lc8/tac;)V

    invoke-virtual {v0, v1, p1}, Lc8/UFb;->sendRequest(Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Z

    move-result v0

    return v0
.end method
