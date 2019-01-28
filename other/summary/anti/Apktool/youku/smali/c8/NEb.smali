.class public Lc8/NEb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/VEb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Lc8/IEb;

.field final synthetic b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;)V
    .locals 2

    iput-object p1, p0, Lc8/NEb;->b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IEb;

    iput-object v0, p0, Lc8/NEb;->a:Lc8/IEb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Lc8/LEb;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    invoke-direct {p0, p1}, Lc8/NEb;-><init>(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc8/NEb;->b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Z)Z

    iget-object v0, p0, Lc8/NEb;->b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    invoke-static {v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc8/NEb;->b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;Z)Z

    iget-object v0, p0, Lc8/NEb;->b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    invoke-static {v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a(Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;)V

    invoke-virtual {p0}, Lc8/NEb;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lc8/NEb;->a:Lc8/IEb;

    iget-object v0, v0, Lc8/IEb;->e:Lc8/VEb;

    invoke-interface {v0}, Lc8/VEb;->b()V

    sget-object v0, Lc8/KEb;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc8/NEb;->b:Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/auth/AlibcAuthActivity;->finish()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lc8/NEb;->a:Lc8/IEb;

    iget-object v0, v0, Lc8/IEb;->e:Lc8/VEb;

    invoke-interface {v0}, Lc8/VEb;->c()V

    return-void
.end method
