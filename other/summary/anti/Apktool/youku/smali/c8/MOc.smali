.class public final Lc8/MOc;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lc8/HOc;

.field final synthetic b:Lc8/KOc;


# direct methods
.method constructor <init>(Lc8/KOc;Lc8/HOc;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lc8/MOc;->b:Lc8/KOc;

    iput-object p2, p0, Lc8/MOc;->a:Lc8/HOc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :try_start_0
    const-string/jumbo v1, "toastCallBack"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    new-instance v1, Lc8/HOc;

    const-string/jumbo v2, "callback"

    invoke-direct {v1, v2}, Lc8/HOc;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lc8/MOc;->a:Lc8/HOc;

    .line 1073
    iget-object v2, v2, Lc8/HOc;->i:Ljava/lang/String;

    .line 1077
    iput-object v2, v1, Lc8/HOc;->i:Ljava/lang/String;

    .line 1109
    iput-object v0, v1, Lc8/HOc;->m:Lorg/json/JSONObject;

    .line 164
    iget-object v0, p0, Lc8/MOc;->b:Lc8/KOc;

    .line 2018
    iget-object v0, v0, Lc8/KOc;->a:Lc8/JOc;

    .line 164
    invoke-interface {v0, v1}, Lc8/JOc;->a(Lc8/HOc;)V

    .line 165
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
