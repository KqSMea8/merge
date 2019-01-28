.class public Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/LEb;,
        Lc8/NEb;,
        Lc8/MEb;
    }
.end annotation


# static fields
.field public static a:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->b:Z

    return-void
.end method

.method private a()V
    .locals 7

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IEb;

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "open_auth_title"

    invoke-static {p0, v1, v2}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "open_auth_desc"

    invoke-static {p0, v2, v3}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "id"

    const-string/jumbo v5, "open_auth_btn_grant"

    invoke-static {p0, v3, v5}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string/jumbo v5, "id"

    const-string/jumbo v6, "open_auth_rl"

    invoke-static {p0, v5, v6}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->c()V

    iget-boolean v5, p0, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->b:Z

    if-eqz v5, :cond_1

    const-string/jumbo v0, "\u6dd8\u5b9d\u6388\u6743\u5931\u8d25"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "\u8bf7\u786e\u8ba4\u7f51\u7edc\u73af\u5883\u540e\u518d\u8bd5\u8bd5\uff1f"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "\u91cd\u8bd5"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "open_auth_btn_cancel"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "open_auth_btn_close"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5c06\u83b7\u53d6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v0, Lc8/IEb;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lc8/IEb;->a:Ljava/lang/String;

    invoke-static {v0}, Lc8/OEb;->getApiAndHint(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc8/OEb;->getHintInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bbf\u95ee\u60a8\u6dd8\u5b9d\u8d26\u53f7\u4fe1\u606f\u7684\u6743\u9650("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lc8/IEb;->c:Ljava/util/Set;

    if-eqz v4, :cond_5

    iget-object v0, v0, Lc8/IEb;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc8/OEb;->getHintInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bbf\u95ee\u60a8\u6dd8\u5b9d\u8d26\u53f7\u4fe1\u606f\u7684\u6743\u9650("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u8bbf\u95ee\u60a8\u6dd8\u5b9d\u8d26\u53f7\u4fe1\u606f\u7684\u6743\u9650"

    :goto_6
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "\u786e\u8ba4\u6388\u6743"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_6
.end method

.method public static synthetic a(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Z)Z
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    iput-boolean p1, p0, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->b:Z

    return p1
.end method

.method private b()V
    .locals 2

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_alibc_auth_progressbar"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .locals 2

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "com_alibc_auth_progressbar"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "open_auth_btn_cancel"

    invoke-static {p0, v1, v2}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "open_auth_btn_close"

    invoke-static {p0, v1, v2}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IEb;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc8/IEb;->e:Lc8/VEb;

    invoke-interface {v0}, Lc8/VEb;->b()V

    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->finish()V

    monitor-exit p0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const-string/jumbo v1, "id"

    const-string/jumbo v2, "open_auth_btn_grant"

    invoke-static {p0, v1, v2}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IEb;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->finish()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->b()V

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "open_auth_rl"

    invoke-static {p0, v1, v2}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc8/IEb;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lc8/IEb;->a:Ljava/lang/String;

    invoke-static {v1}, Lc8/OEb;->getApiAndHint(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    iget-object v0, v0, Lc8/IEb;->a:Ljava/lang/String;

    new-instance v1, Lc8/NEb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/NEb;-><init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Lc8/LEb;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/KEb;->a(Ljava/lang/String;Lc8/VEb;ZZ)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_6
    new-instance v0, Lc8/MEb;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lc8/MEb;-><init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Lc8/LEb;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lc8/KEb;->a(Ljava/util/Set;Lc8/VEb;Z)V

    goto :goto_1

    :cond_7
    iget-object v0, v0, Lc8/IEb;->c:Ljava/util/Set;

    new-instance v1, Lc8/MEb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/MEb;-><init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Lc8/LEb;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/KEb;->a(Ljava/util/Set;Lc8/VEb;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const-string/jumbo v0, "layout"

    const-string/jumbo v1, "com_alibc_auth_actiivty"

    invoke-static {p0, v0, v1}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "authId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IEb;

    iget-object v1, v0, Lc8/IEb;->c:Ljava/util/Set;

    if-nez v1, :cond_0

    iget-object v0, v0, Lc8/IEb;->a:Ljava/lang/String;

    new-instance v1, Lc8/NEb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/NEb;-><init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Lc8/LEb;)V

    invoke-static {v0, v1, v3, v3}, Lc8/KEb;->a(Ljava/lang/String;Lc8/VEb;ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a()V

    goto :goto_0
.end method
