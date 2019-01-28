.class public Lc8/RFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/wgb;


# instance fields
.field final synthetic a:Lc8/PFb;


# direct methods
.method constructor <init>(Lc8/PFb;)V
    .locals 0

    iput-object p1, p0, Lc8/RFb;->a:Lc8/PFb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "AlibcLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MemberSDK init error, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lc8/RFb;->a:Lc8/PFb;

    invoke-static {v0}, Lc8/PFb;->a(Lc8/PFb;)V

    const-string/jumbo v0, "AlibcLogin"

    const-string/jumbo v1, "MemberSDK init success"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
