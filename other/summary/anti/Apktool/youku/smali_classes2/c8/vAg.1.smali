.class public Lc8/vAg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lc8/uAg;


# direct methods
.method constructor <init>(Lc8/uAg;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lc8/vAg;->b:Lc8/uAg;

    iput-object p2, p0, Lc8/vAg;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc8/vAg;->b:Lc8/uAg;

    iget-object v1, p0, Lc8/vAg;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/uAg;->a(Lc8/uAg;Landroid/content/Context;)V

    return-void
.end method
