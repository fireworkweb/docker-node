scripts-prepend-node-path=true
@if (version_compare($version, '10', '>=') || in_array($version, ['latest', 'qa']))
store-dir=/root/.pnpm-store
shamefully-hoist=true
@endif
