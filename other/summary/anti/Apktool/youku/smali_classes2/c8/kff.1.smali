.class public Lc8/kff;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/jff;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lc8/iff;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "DefaultHandler response data"

    invoke-interface {p2, v0}, Lc8/iff;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
