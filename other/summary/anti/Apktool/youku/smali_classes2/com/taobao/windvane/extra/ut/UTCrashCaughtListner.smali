.class public Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;
.super Ljava/lang/Object;
.source "UTCrashCaughtListner.java"

# interfaces
.implements Lc8/SSb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;
    }
.end annotation


# static fields
.field public static wv_currentStatus:Ljava/lang/String;


# instance fields
.field private mUrlList:Ljava/util/LinkedList;

.field private wv_currentUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentUrl:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->init()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    .line 68
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    new-instance v1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;

    invoke-direct {v1, p0}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;-><init>(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)V

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/Thread;
    .param p2, "arg1"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v4, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 74
    .local v2, "size":I
    iget-object v4, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    if-gtz v2, :cond_1

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 78
    iget-object v4, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    invoke-static {v3}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v1, "map":Ljava/util/HashMap;
    const-string/jumbo v4, "crash_url_list"

    iget-object v5, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->mUrlList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v4, "wv_currentUrl"

    iget-object v5, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v4, "wv_currentStatus"

    sget-object v5, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
