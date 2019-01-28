.class public Lc8/Lqb;
.super Ljava/lang/Object;
.source "WXNavigationBarModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXMenuItem"
.end annotation


# instance fields
.field failure:Lc8/EWf;

.field options:Lcom/alibaba/fastjson/JSONObject;

.field success:Lc8/EWf;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 0
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lc8/Lqb;->options:Lcom/alibaba/fastjson/JSONObject;

    .line 148
    iput-object p2, p0, Lc8/Lqb;->success:Lc8/EWf;

    .line 149
    iput-object p3, p0, Lc8/Lqb;->failure:Lc8/EWf;

    .line 150
    return-void
.end method
