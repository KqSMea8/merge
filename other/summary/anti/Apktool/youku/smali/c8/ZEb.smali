.class public Lc8/ZEb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/LMf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WEb;,
        Lc8/YEb;,
        Lc8/XEb;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ZEb;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lc8/WEb;)V
    .locals 0

    invoke-direct {p0}, Lc8/ZEb;-><init>()V

    return-void
.end method

.method public static a()Lc8/ZEb;
    .locals 1

    sget-object v0, Lc8/XEb;->a:Lc8/ZEb;

    return-object v0
.end method

.method static synthetic a(Lc8/ZEb;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/ZEb;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lc8/ZEb;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/JMf;)V
    .locals 5

    const-string/jumbo v0, "Alibc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call authorize authParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " api_v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/ZEb;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lc8/KEb;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p3}, Lc8/KEb;->postHintList(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lc8/YEb;

    invoke-direct {v1, p0, p5}, Lc8/YEb;-><init>(Lc8/ZEb;Lc8/JMf;)V

    invoke-static {v0, p3, p4, v1}, Lc8/KEb;->auth(Ljava/util/List;Ljava/lang/String;ZLc8/VEb;)V

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    const-string/jumbo v1, "BCPCSDK"

    const-string/jumbo v2, "Hint_List_Error"

    const-string/jumbo v3, "190101"

    const-string/jumbo v4, "\u6743\u9650\u5217\u8868\u914d\u7f6e\u9519\u8bef"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/cGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lc8/YEb;

    invoke-direct {v0, p0, p5}, Lc8/YEb;-><init>(Lc8/ZEb;Lc8/JMf;)V

    invoke-static {p2, p3, p4, v0}, Lc8/KEb;->auth(Ljava/lang/String;Ljava/lang/String;ZLc8/VEb;)V

    goto :goto_0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lc8/UEb;->a()Lc8/UEb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UEb;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAuthToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAuthInfoValid()Z
    .locals 4

    invoke-static {}, Lc8/UEb;->a()Lc8/UEb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UEb;->d()Z

    move-result v0

    const-string/jumbo v1, "Alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAuthInfoValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public declared-synchronized isAuthorizing()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Alibc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAuthorizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/ZEb;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lc8/ZEb;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
