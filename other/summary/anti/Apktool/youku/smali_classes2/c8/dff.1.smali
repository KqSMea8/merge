.class public Lc8/dff;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lc8/bff;


# direct methods
.method constructor <init>(Lc8/bff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/dff;->d:Lc8/bff;

    iput-object p2, p0, Lc8/dff;->a:Ljava/lang/String;

    iput-object p3, p0, Lc8/dff;->b:Ljava/lang/String;

    iput-object p4, p0, Lc8/dff;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lc8/dff;->d:Lc8/bff;

    iget-object v1, p0, Lc8/dff;->a:Ljava/lang/String;

    iget-object v2, p0, Lc8/dff;->b:Ljava/lang/String;

    iget-object v3, p0, Lc8/dff;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/bff;->a(Lc8/bff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/dff;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
