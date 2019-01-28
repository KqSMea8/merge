.class public Lc8/wnb;
.super Ljava/lang/Object;
.source "ALPDistributionContext.java"


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public apiType:Ljava/lang/String;

.field public callback:Lc8/gnb;

.field public canDegrade:Z

.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public currentVC:Ljava/lang/String;

.field public deepLinkOpenInfo:Lc8/unb;

.field public degradeH5Url:Ljava/lang/String;

.field public degradeWebview:Landroid/webkit/WebView;

.field public failModeToDeeplink:Z

.field public failureListener:Lc8/gob;

.field public hasSendFailOpenPoint:Z

.field public intentProcessor:Lc8/Zmb;

.field public isAppExist:Z

.field public isDegradeToTB:Z

.field public linkKey:Ljava/lang/String;

.field public module:Ljava/lang/String;

.field public openType:I

.field public packageName:Ljava/lang/String;

.field public pluginRule:Ljava/lang/String;

.field public requestCode:I

.field public url:Ljava/lang/String;

.field public visa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lc8/wnb;->failModeToDeeplink:Z

    .line 65
    iput-boolean v0, p0, Lc8/wnb;->isDegradeToTB:Z

    .line 70
    iput-boolean v0, p0, Lc8/wnb;->hasSendFailOpenPoint:Z

    .line 73
    iput v0, p0, Lc8/wnb;->requestCode:I

    .line 96
    iput-object p1, p0, Lc8/wnb;->context:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wnb;->actions:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wnb;->categories:Ljava/util/List;

    .line 99
    return-void
.end method
