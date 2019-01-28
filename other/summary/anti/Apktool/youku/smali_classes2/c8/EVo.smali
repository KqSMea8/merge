.class public Lc8/EVo;
.super Ljava/lang/Object;
.source "HomeTabInfo.java"


# static fields
.field public static final HOME_PAGE:Ljava/lang/String; = "jump_to_homepage_card"

.field public static final INTERNACTION:Ljava/lang/String; = "jump_to_interaction_card"

.field public static final SUB_CHANNEL:Ljava/lang/String; = "jump_to_sub_channel"


# instance fields
.field public channelKey:Ljava/lang/String;

.field public cid:I

.field public filterWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/FilterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public page_id:I

.field public parentChannelKey:Ljava/lang/String;

.field public searchKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public search_key:Ljava/lang/String;

.field public styleExtend:Ljava/lang/String;

.field public sub_channel_id:I

.field public tao_piao_piao:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/EVo;->filterWrapperList:Ljava/util/List;

    return-void
.end method
