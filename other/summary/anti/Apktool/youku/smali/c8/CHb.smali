.class public Lc8/CHb;
.super Lc8/BHb;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/BHb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/vFb;->MINI_SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_SHOW_MINI_ITEM_DETAIL:Ljava/lang/String;

    return-object v0
.end method

.method public requireOpenType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
