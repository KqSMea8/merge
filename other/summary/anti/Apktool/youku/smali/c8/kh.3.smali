.class public Lc8/kh;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jh;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static sDefaultTransition:Lc8/uh;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/uh;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lc8/Mg;",
            "Lc8/uh;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lc8/Mg;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/uh;",
            ">;>;"
        }
    .end annotation
.end field

.field mScenePairTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lc8/Mg;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lc8/Mg;",
            "Lc8/uh;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lc8/Mg;",
            "Lc8/uh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lc8/kh;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "TransitionManager"

    sput-object v0, Lc8/kh;->LOG_TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lc8/og;

    invoke-direct {v0}, Lc8/og;-><init>()V

    sput-object v0, Lc8/kh;->sDefaultTransition:Lc8/uh;

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/kh;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/kh;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/kh;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/kh;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 55
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/kh;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/kh;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 380
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/kh;->beginDelayedTransition(Landroid/view/ViewGroup;Lc8/uh;)V

    .line 169
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Lc8/uh;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 173
    sget-object v1, Lc8/kh;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lc8/kh;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    if-nez p1, :cond_0

    .line 180
    sget-object p1, Lc8/kh;->sDefaultTransition:Lc8/uh;

    .line 182
    :cond_0
    invoke-virtual {p1}, Lc8/uh;->clone()Lc8/uh;

    move-result-object v0

    .line 183
    .local v0, "transitionClone":Lc8/uh;
    invoke-static {p0, v0}, Lc8/kh;->sceneChangeSetup(Landroid/view/ViewGroup;Lc8/uh;)V

    .line 184
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lc8/Mg;->setCurrentScene(Landroid/view/View;Lc8/Mg;)V

    .line 185
    invoke-static {p0, v0}, Lc8/kh;->sceneChangeRunTransition(Landroid/view/ViewGroup;Lc8/uh;)V

    .line 187
    .end local v0    # "transitionClone":Lc8/uh;
    :cond_1
    return-void
.end method

.method private static changeScene(Lc8/Mg;Lc8/uh;)V
    .locals 4
    .param p0, "scene"    # Lc8/Mg;
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 97
    invoke-virtual {p0}, Lc8/Mg;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 99
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 100
    .local v2, "transitionClone":Lc8/uh;
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lc8/uh;->clone()Lc8/uh;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Lc8/uh;->setSceneRoot(Landroid/view/ViewGroup;)Lc8/uh;

    .line 105
    :cond_0
    invoke-static {v1}, Lc8/Mg;->getCurrentScene(Landroid/view/View;)Lc8/Mg;

    move-result-object v0

    .line 106
    .local v0, "oldScene":Lc8/Mg;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc8/Mg;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/uh;->setCanRemoveViews(Z)V

    .line 110
    :cond_1
    invoke-static {v1, v2}, Lc8/kh;->sceneChangeSetup(Landroid/view/ViewGroup;Lc8/uh;)V

    .line 112
    invoke-virtual {p0}, Lc8/Mg;->enter()V

    .line 114
    invoke-static {v1, v2}, Lc8/kh;->sceneChangeRunTransition(Landroid/view/ViewGroup;Lc8/uh;)V

    .line 115
    return-void
.end method

.method public static getDefaultTransition()Lc8/uh;
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lc8/kh;->sDefaultTransition:Lc8/uh;

    return-object v0
.end method

.method static getRunningTransitions()Landroid/support/v4/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/uh;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v2, Lc8/kh;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 119
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 120
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 122
    .local v1, "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 123
    .restart local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    sget-object v2, Lc8/kh;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 125
    .end local v1    # "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    return-object v2
.end method

.method private getTransition(Lc8/Mg;)Lc8/uh;
    .locals 5
    .param p1, "scene"    # Lc8/Mg;

    .prologue
    .line 214
    invoke-virtual {p1}, Lc8/Mg;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 215
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 217
    invoke-static {v1}, Lc8/Mg;->getCurrentScene(Landroid/view/View;)Lc8/Mg;

    move-result-object v0

    .line 218
    .local v0, "currScene":Lc8/Mg;
    if-eqz v0, :cond_0

    .line 219
    iget-object v4, p0, Lc8/kh;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 220
    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    .line 221
    .local v2, "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uh;

    .line 223
    .local v3, "transition":Lc8/uh;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 230
    .end local v0    # "currScene":Lc8/Mg;
    .end local v2    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    :goto_0
    return-object v4

    .line 229
    .end local v3    # "transition":Lc8/uh;
    :cond_0
    iget-object v4, p0, Lc8/kh;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uh;

    .line 230
    .restart local v3    # "transition":Lc8/uh;
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lc8/kh;->sDefaultTransition:Lc8/uh;

    goto :goto_0
.end method

.method public static go(Lc8/Mg;)V
    .locals 1
    .param p0, "scene"    # Lc8/Mg;

    .prologue
    .line 160
    sget-object v0, Lc8/kh;->sDefaultTransition:Lc8/uh;

    invoke-static {p0, v0}, Lc8/kh;->changeScene(Lc8/Mg;Lc8/uh;)V

    .line 161
    return-void
.end method

.method public static go(Lc8/Mg;Lc8/uh;)V
    .locals 0
    .param p0, "scene"    # Lc8/Mg;
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 164
    invoke-static {p0, p1}, Lc8/kh;->changeScene(Lc8/Mg;Lc8/uh;)V

    .line 165
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Lc8/uh;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Lc8/jh;

    invoke-direct {v0, p1, p0}, Lc8/jh;-><init>(Lc8/uh;Landroid/view/ViewGroup;)V

    .line 132
    .local v0, "listener":Lc8/jh;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    .end local v0    # "listener":Lc8/jh;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Lc8/uh;)V
    .locals 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 140
    invoke-static {}, Lc8/kh;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 142
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/uh;

    .line 144
    .local v1, "runningTransition":Lc8/uh;
    invoke-virtual {v1, p0}, Lc8/uh;->pause(Landroid/view/View;)V

    goto :goto_0

    .line 148
    .end local v1    # "runningTransition":Lc8/uh;
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const/4 v3, 0x1

    invoke-virtual {p1, p0, v3}, Lc8/uh;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 153
    :cond_1
    invoke-static {p0}, Lc8/Mg;->getCurrentScene(Landroid/view/View;)Lc8/Mg;

    move-result-object v0

    .line 154
    .local v0, "previousScene":Lc8/Mg;
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Lc8/Mg;->exit()V

    .line 157
    :cond_2
    return-void
.end method


# virtual methods
.method public getNamedTransition(Lc8/Mg;Ljava/lang/String;)Lc8/uh;
    .locals 2
    .param p1, "fromScene"    # Lc8/Mg;
    .param p2, "toName"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v1, p0, Lc8/kh;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 280
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/uh;

    .line 283
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamedTransition(Ljava/lang/String;Lc8/Mg;)Lc8/uh;
    .locals 2
    .param p1, "fromName"    # Ljava/lang/String;
    .param p2, "toScene"    # Lc8/Mg;

    .prologue
    .line 252
    iget-object v1, p0, Lc8/kh;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 253
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/uh;

    .line 256
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTargetSceneNames(Lc8/Mg;)[Ljava/lang/String;
    .locals 5
    .param p1, "fromScene"    # Lc8/Mg;

    .prologue
    .line 304
    iget-object v4, p0, Lc8/kh;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    .line 305
    .local v2, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    if-nez v2, :cond_1

    .line 306
    sget-object v3, Lc8/kh;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 313
    :cond_0
    return-object v3

    .line 308
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 309
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 310
    .local v3, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDefaultTransition(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 82
    sput-object p1, Lc8/kh;->sDefaultTransition:Lc8/uh;

    .line 83
    return-void
.end method

.method public setTransition(Lc8/Mg;Lc8/Mg;Lc8/uh;)V
    .locals 2
    .param p1, "fromScene"    # Lc8/Mg;
    .param p2, "toScene"    # Lc8/Mg;
    .param p3, "transition"    # Lc8/uh;

    .prologue
    .line 194
    iget-object v1, p0, Lc8/kh;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 195
    .local v0, "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 197
    .restart local v0    # "sceneTransitionMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    iget-object v1, p0, Lc8/kh;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public setTransition(Lc8/Mg;Lc8/uh;)V
    .locals 1
    .param p1, "scene"    # Lc8/Mg;
    .param p2, "transition"    # Lc8/uh;

    .prologue
    .line 190
    iget-object v0, p0, Lc8/kh;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public setTransition(Lc8/Mg;Ljava/lang/String;Lc8/uh;)V
    .locals 2
    .param p1, "fromScene"    # Lc8/Mg;
    .param p2, "toName"    # Ljava/lang/String;
    .param p3, "transition"    # Lc8/uh;

    .prologue
    .line 333
    iget-object v1, p0, Lc8/kh;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 334
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 336
    .restart local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/support/transition/TransitionPort;>;"
    iget-object v1, p0, Lc8/kh;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public setTransition(Ljava/lang/String;Lc8/Mg;Lc8/uh;)V
    .locals 2
    .param p1, "fromName"    # Ljava/lang/String;
    .param p2, "toScene"    # Lc8/Mg;
    .param p3, "transition"    # Lc8/uh;

    .prologue
    .line 358
    iget-object v1, p0, Lc8/kh;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 359
    .local v0, "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 361
    .restart local v0    # "m":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/support/transition/ScenePort;Landroid/support/transition/TransitionPort;>;"
    iget-object v1, p0, Lc8/kh;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method public transitionTo(Lc8/Mg;)V
    .locals 1
    .param p1, "scene"    # Lc8/Mg;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lc8/kh;->getTransition(Lc8/Mg;)Lc8/uh;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/kh;->changeScene(Lc8/Mg;Lc8/uh;)V

    .line 370
    return-void
.end method
