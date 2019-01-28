.class public Lcom/youku/vo/GameCenterVideoInfo;
.super Ljava/lang/Object;
.source "GameCenterVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SOURCE_TYPE_APP_HOMEPAGE_MENU:Ljava/lang/String; = "6"

.field public static final SOURCE_TYPE_DETAIL_PAGE:Ljava/lang/String; = "1"

.field public static final SOURCE_TYPE_HOMEPAGE_CAROUSEL:Ljava/lang/String; = "3"

.field public static final SOURCE_TYPE_LIST:Ljava/lang/String; = "0"

.field public static final SOURCE_TYPE_MY_SPACE:Ljava/lang/String; = "7"

.field public static final SOURCE_TYPE_POPUPWINDOW:Ljava/lang/String; = "4"

.field public static final SOURCE_TYPE_PUSH:Ljava/lang/String; = "2"

.field public static final SOURCE_TYPE_TAB_CAROUSEL:Ljava/lang/String; = "5"

.field public static final Statistic_SOURCE_TYPE_OTHER:Ljava/lang/String; = "14"

.field private static final serialVersionUID:J = 0x1c1ab47c7f64f2dbL


# instance fields
.field public comment:Ljava/lang/String;

.field public game_class_name:Ljava/lang/String;

.field public game_description:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public game_logo:Ljava/lang/String;

.field public game_name:Ljava/lang/String;

.field public game_package_name:Ljava/lang/String;

.field public game_size:Ljava/lang/String;

.field public game_type:Ljava/lang/String;

.field public game_type_name:Ljava/lang/String;

.field public game_url:Ljava/lang/String;

.field public game_version_code:Ljava/lang/String;

.field public game_version_name:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "14"

    iput-object v0, p0, Lcom/youku/vo/GameCenterVideoInfo;->source:Ljava/lang/String;

    return-void
.end method
