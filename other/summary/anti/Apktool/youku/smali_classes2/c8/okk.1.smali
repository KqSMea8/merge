.class public Lc8/okk;
.super Lc8/tkk;
.source "BannerInfo.java"


# static fields
.field public static final ACTION_BROWSER:Ljava/lang/String; = "outer_browser"

.field public static final ACTION_SDK:Ljava/lang/String; = "sdk"

.field public static final ACTION_WEBVIEW:Ljava/lang/String; = "webview"


# instance fields
.field public content_id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public need_extra_info:I

.field public new_jump_by:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cardType"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lc8/tkk;-><init>(I)V

    .line 62
    return-void
.end method
