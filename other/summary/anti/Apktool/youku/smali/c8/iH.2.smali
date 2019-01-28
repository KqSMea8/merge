.class public Lc8/iH;
.super Ljava/lang/Object;
.source "PermissionProposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionRequestTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private explain:Ljava/lang/String;

.field private permissionDeniedRunnable:Ljava/lang/Runnable;

.field private permissionGrantedRunnable:Ljava/lang/Runnable;

.field private permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lc8/iH;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lc8/iH;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/iH;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Lc8/iH;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/iH;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/iH;->permissions:[Ljava/lang/String;

    return-object p1
.end method

.method private destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lc8/iH;->context:Landroid/content/Context;

    .line 191
    iput-object v0, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    .line 192
    iput-object v0, p0, Lc8/iH;->permissionDeniedRunnable:Ljava/lang/Runnable;

    .line 193
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    .line 128
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_6

    .line 129
    iget-object v7, p0, Lc8/iH;->permissions:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lc8/iH;->permissions:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string/jumbo v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 131
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    const-class v8, Lc8/hH;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v7, "permissions"

    iget-object v8, p0, Lc8/iH;->permissions:[Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-static {p0}, Lc8/jH;->access$202(Lc8/iH;)Lc8/iH;

    .line 135
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v7, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 140
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v5, "needGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/iH;->permissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 143
    .local v6, "permission":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    :catch_0
    move-exception v7

    iget-object v7, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 152
    .end local v6    # "permission":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 153
    iget-object v7, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 155
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 156
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    const-class v8, Lc8/hH;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    instance-of v7, v7, Landroid/app/Activity;

    if-nez v7, :cond_5

    .line 158
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    :cond_5
    const-string/jumbo v7, "permissions"

    iget-object v8, p0, Lc8/iH;->permissions:[Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v7, "explain"

    iget-object v8, p0, Lc8/iH;->explain:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-static {p0}, Lc8/jH;->access$202(Lc8/iH;)Lc8/iH;

    .line 164
    iget-object v7, p0, Lc8/iH;->context:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "len$":I
    .end local v5    # "needGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    iget-object v7, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 170
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lc8/iH;->context:Landroid/content/Context;

    return-object v0
.end method

.method onPermissionGranted(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 186
    :cond_0
    :goto_0
    invoke-direct {p0}, Lc8/iH;->destroy()V

    .line 187
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lc8/iH;->permissionDeniedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lc8/iH;->permissionDeniedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setRationalStr(Ljava/lang/String;)Lc8/iH;
    .locals 0
    .param p1, "explain"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/iH;->explain:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    iput-object p1, p0, Lc8/iH;->permissionDeniedRunnable:Ljava/lang/Runnable;

    .line 124
    return-object p0
.end method

.method public setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "permissionGrantedRunnable is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lc8/iH;->permissionGrantedRunnable:Ljava/lang/Runnable;

    .line 119
    return-object p0
.end method
