.class public final Lc8/eIb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

.field final synthetic b:Lc8/SHb;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;Lc8/SHb;)V
    .locals 0

    iput-object p1, p0, Lc8/eIb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    iput-object p2, p0, Lc8/eIb;->b:Lc8/SHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc8/eIb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;

    iget-object v1, p0, Lc8/eIb;->b:Lc8/SHb;

    iget v1, v1, Lc8/SHb;->a:I

    iget-object v2, p0, Lc8/eIb;->b:Lc8/SHb;

    iget-object v2, v2, Lc8/SHb;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
