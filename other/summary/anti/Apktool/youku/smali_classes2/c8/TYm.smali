.class public Lc8/TYm;
.super Ljava/lang/Object;
.source "PopMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SYm;
    }
.end annotation


# static fields
.field private static mInstance:Lc8/TYm;

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/SYm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lc8/TYm;->map:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/TYm;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lc8/TYm;->mInstance:Lc8/TYm;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lc8/TYm;

    invoke-direct {v0}, Lc8/TYm;-><init>()V

    sput-object v0, Lc8/TYm;->mInstance:Lc8/TYm;

    .line 21
    :cond_0
    sget-object v0, Lc8/TYm;->mInstance:Lc8/TYm;

    return-object v0
.end method


# virtual methods
.method public dismissed(Ljava/lang/String;)J
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 79
    .local v0, "pop":Lc8/SYm;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/SYm;->dismissTime:J

    .line 80
    invoke-virtual {v0}, Lc8/SYm;->getPoppedToDismissTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 82
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public displayed(Ljava/lang/String;)J
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 45
    .local v0, "pop":Lc8/SYm;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/SYm;->displayedTime:J

    .line 46
    invoke-virtual {v0}, Lc8/SYm;->getPoppedToDisplayedTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 48
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isLoadError(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 54
    .local v0, "pop":Lc8/SYm;
    iget-boolean v1, v0, Lc8/SYm;->loadError:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserClose(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 97
    .local v0, "pop":Lc8/SYm;
    iget-boolean v1, v0, Lc8/SYm;->userClose:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popped(Ljava/lang/String;)J
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Lc8/SYm;

    invoke-direct {v0}, Lc8/SYm;-><init>()V

    .line 27
    .local v0, "pop":Lc8/SYm;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/SYm;->poppedTime:J

    .line 28
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    const-wide/16 v2, 0x0

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string/jumbo v0, "def.p"

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/TYm;->urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "proHost"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 66
    .local v0, "pop":Lc8/SYm;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/SYm;->loadErrorTime:J

    .line 67
    iput-object p2, v0, Lc8/SYm;->loadErrorCode:Ljava/lang/String;

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/SYm;->loadError:Z

    .line 69
    iput-object p3, v0, Lc8/SYm;->url:Ljava/lang/String;

    .line 70
    iput-object p4, v0, Lc8/SYm;->proHost:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lc8/SYm;->getPoppedToUrlLoadErrorTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 73
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public urlLoaded(Ljava/lang/String;)J
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    sget-object v1, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 36
    .local v0, "pop":Lc8/SYm;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/SYm;->loadedTime:J

    .line 37
    invoke-virtual {v0}, Lc8/SYm;->getPoppedToUrlLoadedTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 39
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public userClose(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 87
    :try_start_0
    sget-object v2, Lc8/TYm;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SYm;

    .line 88
    .local v0, "pop":Lc8/SYm;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/SYm;->userClose:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "pop":Lc8/SYm;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
