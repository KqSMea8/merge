.class public final enum Lcom/youku/ui/activity/actionbar/ActionMenu;
.super Ljava/lang/Enum;
.source "ActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/ui/activity/actionbar/ActionMenu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final ID_APP:I = 0x6d

.field public static final ID_COPY:I = 0x3f8

.field public static final ID_DOWNLOAD:I = 0x66

.field public static final ID_EDIT:I = 0x65

.field public static final ID_FEEDBACK:I = 0x6a

.field public static final ID_GAME:I = 0x3f2

.field public static final ID_GOTOWEB:I = 0x3f5

.field public static final ID_HISTORY:I = 0x67

.field public static final ID_MORE:I = 0x3f3

.field public static final ID_RATING:I = 0x6b

.field public static final ID_REFRESH:I = 0x3f4

.field public static final ID_SAOSAO:I = 0x6c

.field public static final ID_SEARCH:I = 0x64

.field public static final ID_SETTING:I = 0x69

.field public static final ID_SHARE:I = 0x3f7

.field public static final ID_UPLOAD:I = 0x68

.field public static final ID_VIP:I = 0x3f6

.field public static final enum app:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum copy:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum download:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum edit:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum feedback:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum game:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum gotoweb:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum history:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum more:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum rating:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum refresh:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum saosao:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum search:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum setting:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum share:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum upload:Lcom/youku/ui/activity/actionbar/ActionMenu;

.field public static final enum vip:Lcom/youku/ui/activity/actionbar/ActionMenu;


# instance fields
.field public final drawable:I

.field public final id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v1, "search"

    const/16 v3, 0x64

    sget v4, Lcom/youku/phone/R$drawable;->actionbar_search_selector:I

    const-string/jumbo v5, "\u641c\u7d22"

    invoke-direct/range {v0 .. v5}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->search:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 14
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "edit"

    const/16 v6, 0x65

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_editor_selector:I

    const-string/jumbo v8, "\u7f16\u8f91"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->edit:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 15
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "download"

    const/16 v6, 0x66

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_download_selector:I

    const-string/jumbo v8, "\u4e0b\u8f7d"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->download:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 16
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "history"

    const/16 v6, 0x67

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_history_selector:I

    const-string/jumbo v8, "\u8bb0\u5f55"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->history:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 17
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "upload"

    const/16 v6, 0x68

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_upload_selector:I

    const-string/jumbo v8, "\u4e0a\u4f20"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->upload:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 18
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "saosao"

    const/4 v5, 0x5

    const/16 v6, 0x6c

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_saosao_selector:I

    const-string/jumbo v8, "\u626b\u4e00\u626b"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->saosao:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 19
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "setting"

    const/4 v5, 0x6

    const/16 v6, 0x69

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_setting_selector:I

    const-string/jumbo v8, "\u8bbe\u7f6e"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->setting:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 20
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "vip"

    const/4 v5, 0x7

    const/16 v6, 0x3f6

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_vip_selector:I

    const-string/jumbo v8, "\u4f1a\u5458"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->vip:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 21
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "feedback"

    const/16 v5, 0x8

    const/16 v6, 0x6a

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_feedback_selector:I

    const-string/jumbo v8, "\u53cd\u9988"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->feedback:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 22
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "rating"

    const/16 v5, 0x9

    const/16 v6, 0x6b

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_rating_selector:I

    const-string/jumbo v8, "\u8bc4\u5206"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->rating:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 23
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "app"

    const/16 v5, 0xa

    const/16 v6, 0x6d

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_recommend_selector:I

    const-string/jumbo v8, "\u5546\u5e97"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->app:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 24
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "game"

    const/16 v5, 0xb

    const/16 v6, 0x3f2

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_game_red_selector:I

    const-string/jumbo v8, "\u6e38\u620f"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->game:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 25
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "more"

    const/16 v5, 0xc

    const/16 v6, 0x3f3

    sget v7, Lcom/youku/phone/R$drawable;->actionbar_more_selector:I

    const-string/jumbo v8, "\u66f4\u591a"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->more:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 27
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "share"

    const/16 v5, 0xd

    const/16 v6, 0x3f7

    sget v7, Lcom/youku/phone/R$drawable;->topbar_more_webview_share:I

    const-string/jumbo v8, "\u5206\u4eab"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->share:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 28
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "refresh"

    const/16 v5, 0xe

    const/16 v6, 0x3f4

    sget v7, Lcom/youku/phone/R$drawable;->topbar_more_webview_refresh:I

    const-string/jumbo v8, "\u5237\u65b0"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->refresh:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 29
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "copy"

    const/16 v5, 0xf

    const/16 v6, 0x3f8

    sget v7, Lcom/youku/phone/R$drawable;->topbar_more_webview_copy:I

    const-string/jumbo v8, "\u590d\u5236"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->copy:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 30
    new-instance v3, Lcom/youku/ui/activity/actionbar/ActionMenu;

    const-string/jumbo v4, "gotoweb"

    const/16 v5, 0x10

    const/16 v6, 0x3f5

    sget v7, Lcom/youku/phone/R$drawable;->topbar_more_webview_brower:I

    const-string/jumbo v8, "\u6d4f\u89c8\u5668"

    invoke-direct/range {v3 .. v8}, Lcom/youku/ui/activity/actionbar/ActionMenu;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/youku/ui/activity/actionbar/ActionMenu;->gotoweb:Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 11
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/youku/ui/activity/actionbar/ActionMenu;

    sget-object v1, Lcom/youku/ui/activity/actionbar/ActionMenu;->search:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/ui/activity/actionbar/ActionMenu;->edit:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v1, v0, v9

    sget-object v1, Lcom/youku/ui/activity/actionbar/ActionMenu;->download:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v1, v0, v10

    sget-object v1, Lcom/youku/ui/activity/actionbar/ActionMenu;->history:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v1, v0, v11

    sget-object v1, Lcom/youku/ui/activity/actionbar/ActionMenu;->upload:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->saosao:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->setting:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->vip:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->feedback:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->rating:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->app:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->game:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->more:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->share:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->refresh:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->copy:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/youku/ui/activity/actionbar/ActionMenu;->gotoweb:Lcom/youku/ui/activity/actionbar/ActionMenu;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->$VALUES:[Lcom/youku/ui/activity/actionbar/ActionMenu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "drawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/youku/ui/activity/actionbar/ActionMenu;->id:I

    .line 39
    iput p4, p0, Lcom/youku/ui/activity/actionbar/ActionMenu;->drawable:I

    .line 40
    iput-object p5, p0, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/ui/activity/actionbar/ActionMenu;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/activity/actionbar/ActionMenu;

    return-object v0
.end method

.method public static values()[Lcom/youku/ui/activity/actionbar/ActionMenu;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->$VALUES:[Lcom/youku/ui/activity/actionbar/ActionMenu;

    invoke-virtual {v0}, [Lcom/youku/ui/activity/actionbar/ActionMenu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/ui/activity/actionbar/ActionMenu;

    return-object v0
.end method
