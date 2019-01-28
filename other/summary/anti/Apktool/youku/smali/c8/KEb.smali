.class public Lc8/KEb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JEb;,
        Lc8/IEb;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private static b:Lc8/PEb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/KEb;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    sget-object v0, Lc8/KEb;->b:Lc8/PEb;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/KEb;->b:Lc8/PEb;

    invoke-interface {v0, p0}, Lc8/PEb;->getHintList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    const-class v2, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "authId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lc8/VEb;ZZ)V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    new-instance v0, Lc8/REb;

    invoke-direct {v0, p0, p1, p3, p2}, Lc8/REb;-><init>(Ljava/lang/String;Lc8/VEb;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/REb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(Ljava/util/Set;Lc8/VEb;Z)V
    .locals 3
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    invoke-static {}, Lc8/UEb;->a()Lc8/UEb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UEb;->c()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/auth/a;->b:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/auth/a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lc8/QEb;

    invoke-direct {v1}, Lc8/QEb;-><init>()V

    new-instance v2, Lc8/JEb;

    invoke-direct {v2, p1, v0, p2}, Lc8/JEb;-><init>(Lc8/VEb;Ljava/lang/String;Z)V

    invoke-virtual {v1, p0, v0, v2}, Lc8/QEb;->a(Ljava/util/Set;Ljava/lang/String;Lc8/VFb;)Z

    goto :goto_0
.end method

.method public static auth(Ljava/lang/String;Ljava/lang/String;ZLc8/VEb;)V
    .locals 4

    invoke-static {p1}, Lc8/KEb;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lc8/KEb;->auth(Ljava/util/List;Ljava/lang/String;ZLc8/VEb;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lc8/IEb;

    invoke-direct {v0, p1, p2, p3}, Lc8/IEb;-><init>(Ljava/lang/String;ZLc8/VEb;)V

    iput-object p0, v0, Lc8/IEb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, Lc8/KEb;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-static {v1}, Lc8/KEb;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lc8/KEb;->a(Ljava/lang/String;Lc8/VEb;ZZ)V

    goto :goto_0
.end method

.method public static auth(Ljava/util/List;Ljava/lang/String;ZLc8/VEb;)V
    .locals 5

    invoke-static {p1}, Lc8/KEb;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/auth/a;->b:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/auth/a;->c:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lc8/VEb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lc8/IEb;

    invoke-direct {v1, p1, p2, p3}, Lc8/IEb;-><init>(Ljava/lang/String;ZLc8/VEb;)V

    iput-object v0, v1, Lc8/IEb;->c:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget-object v3, Lc8/KEb;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    invoke-static {v2}, Lc8/KEb;->a(I)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lc8/KEb;->a(Ljava/util/Set;Lc8/VEb;Z)V

    goto :goto_2
.end method

.method public static authRefresh()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lc8/KEb;->a(Ljava/util/Set;Lc8/VEb;Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lc8/KEb;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cleanAuth()V
    .locals 1

    invoke-static {}, Lc8/UEb;->a()Lc8/UEb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UEb;->e()Z

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/alibaba/baichuan/android/auth/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "00"

    :cond_0
    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v1

    const-string/jumbo v2, "BCPCSDK"

    const-string/jumbo v3, "Mtop_Auth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2101"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/cGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init()V
    .locals 2

    const-string/jumbo v0, "Alibc"

    const-string/jumbo v1, "AlibcAuth init"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc8/ZEb;->a()Lc8/ZEb;

    move-result-object v0

    invoke-static {v0}, Lc8/PMf;->setAuthImpl(Lc8/LMf;)V

    return-void
.end method

.method public static postHintList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lc8/KEb;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lc8/KEb;->b:Lc8/PEb;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lc8/KEb;->b:Lc8/PEb;

    invoke-interface {v1, p0, v0}, Lc8/PEb;->postHintList(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static registAuthEvent(Lc8/PEb;)V
    .locals 0

    sput-object p0, Lc8/KEb;->b:Lc8/PEb;

    return-void
.end method

.method public static unregistAuthEvent()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/KEb;->b:Lc8/PEb;

    return-void
.end method
